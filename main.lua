
function love.load()
  player = {}
  player.x = 0
  player.bullets = {}
  player.fire = function()
    bullet = {}
    bullet.x = player.x
    bullet.y = 400
    table.insert(player.bullets, bullet)
  end

end


function love.update()
  if love.keyboard.isDown("right") then
    player.x = player.x + 1
  elseif love.keyboard.isDown("left") then
    player.x = player.x - 1
  end

  if love.keyboard.isDown("space") then
    player.fire()
  end
end

function love.draw()
  love.graphics.setColor(255, 120, 255, 255)
  love.graphics.rectangle("fill", player.x, 400, 80, 20)
  for _, v in pairs(player.bullets) do
    love.graphics.rectangle("fill", v.x, v.y, 10, 10)
  end
end

--https://youtu.be/FUiz1kL0QtI?t=15m3s
