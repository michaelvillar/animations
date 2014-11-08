friction = 1.3
maxAngle = 40
count = 10

css = "@keyframes bell {\n"
for t in [0..100]
  x = t / 10
  v = Math.sin(x*Math.PI / 10 * (count - 1)) * Math.pow(friction, -x)
  angle = v * maxAngle
  css += "#{t}% { transform: rotateZ(#{angle}deg) }\n"

css += "}\n"
console.log css
