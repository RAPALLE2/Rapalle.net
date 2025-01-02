const snowflakeArea = document.body;

        const getRandomX = () => `${Math.random() * 100}vw`;
        const getRandomSize = () => `${Math.random() * 3 + 1}px`;
        const getRandomDelay = () => `${Math.random() * 5}s`;

        function createSnowflakes() {
            for (let i = 0; i < 800; i++) {
                const snowflake = document.createElement("div");
                snowflake.classList.add("snowflake");
                const randomX = getRandomX();
                const randomSize = getRandomSize();
                const animationDelay = getRandomDelay();
                const animationDuration = Math.random() * 5 + 3 + 's';

                snowflake.style.left = randomX;
                snowflake.style.width = randomSize;
                snowflake.style.height = randomSize;
                snowflake.style.animationDelay = animationDelay;
                snowflake.style.animationDuration = animationDuration;

                snowflakeArea.appendChild(snowflake);
            }
        }

        $(document).ready(function () {
            var canvas = $('#canvas')[0];
            canvas.width = $(window).width();
            canvas.height = $(window).height();
            var ctx = canvas.getContext('2d');

            // Firework animation setup
            var listFire = [];
            var listFirework = [];
            var fireNumber = 10;
            var center = { x: canvas.width / 2, y: canvas.height / 2 };
            var range = 100;

            for (var i = 0; i < fireNumber; i++) {
                var fire = {
                    x: Math.random() * range / 2 - range / 4 + center.x,
                    y: Math.random() * range * 2 + canvas.height,
                    size: Math.random() + 0.5,
                    fill: '#fd1',
                    vx: Math.random() - 0.5,
                    vy: -(Math.random() + 4),
                    ax: Math.random() * 0.02 - 0.01,
                    far: Math.random() * range + (center.y - range)
                };
                fire.base = {
                    x: fire.x,
                    y: fire.y,
                    vx: fire.vx
                };
                listFire.push(fire);
            }

            function randColor() {
                var r = Math.floor(Math.random() * 256);
                var g = Math.floor(Math.random() * 256);
                var b = Math.floor(Math.random() * 256);
                var color = 'rgb(' + r + ',' + g + ',' + b + ')';
                return color;
            }

            (function loop() {
                update();
                draw();
                requestAnimationFrame(loop);
            })();

            function update() {
                for (var i = 0; i < listFire.length; i++) {
                    var fire = listFire[i];
                    if (fire.y <= fire.far) {
                        var color = randColor();
                        for (var j = 0; j < fireNumber * 5; j++) {
                            var firework = {
                                x: fire.x,
                                y: fire.y,
                                size: Math.random() + 1.5,
                                fill: color,
                                vx: Math.random() * 5 - 2.5,
                                vy: Math.random() * -5 + 1.5,
                                ay: 0.05,
                                alpha: 1,
                                life: Math.round(Math.random() * range / 2) + range / 2
                            };
                            firework.base = {
                                life: firework.life,
                                size: firework.size
                            };
                            listFirework.push(firework);
                        }
                        fire.y = fire.base.y;
                        fire.x = fire.base.x;
                        fire.vx = fire.base.vx;
                        fire.ax = Math.random() * 0.02 - 0.01;
                    }
                    fire.x += fire.vx;
                    fire.y += fire.vy;
                    fire.vx += fire.ax;
                }

                for (var i = listFirework.length - 1; i >= 0; i--) {
                    var firework = listFirework[i];
                    if (firework) {
                        firework.x += firework.vx;
                        firework.y += firework.vy;
                        firework.vy += firework.ay;
                        firework.alpha = firework.life / firework.base.life;
                        firework.size = firework.alpha * firework.base.size;
                        firework.alpha = firework.alpha > 0.6 ? 1 : firework.alpha;
                        firework.life--;
                        if (firework.life <= 0) {
                            listFirework.splice(i, 1);
                        }
                    }
                }
            }

            function draw() {
                ctx.globalCompositeOperation = 'source-over';
                ctx.globalAlpha = 0.18;
                ctx.fillStyle = '#000';
                ctx.fillRect(0, 0, canvas.width, canvas.height);
                ctx.globalCompositeOperation = 'screen';
                ctx.globalAlpha = 1;

                for (var i = 0; i < listFire.length; i++) {
                    var fire = listFire[i];
                    ctx.beginPath();
                    ctx.arc(fire.x, fire.y, fire.size, 0, Math.PI * 2);
                    ctx.closePath();
                    ctx.fillStyle = fire.fill;
                    ctx.fill();
                }

                for (var i = 0; i < listFirework.length; i++) {
                    var firework = listFirework[i];
                    ctx.globalAlpha = firework.alpha;
                    ctx.beginPath();
                    ctx.arc(firework.x, firework.y, firework.size, 0, Math.PI * 2);
                    ctx.closePath();
                    ctx.fillStyle = firework.fill;
                    ctx.fill();
                }
            }

            // Event listener for animation selection
            $('#animationSelect').change(function () {
                const selectedAnimation = this.value;
                if (selectedAnimation === 'firework') {
                    $('#canvas').show();
                    $('.snowflake').hide();
                } else {
                    $('#canvas').hide();
                    $('.snowflake').show();
                }
            });

            // Initialize with snow animation only
            $('#canvas').hide();
            createSnowflakes();
        });