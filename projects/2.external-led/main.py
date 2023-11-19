import time
import board
import digitalio

externalLedBlue = digitalio.DigitalInOut(board.GP16)
externalLedBlue.switch_to_output()
externalLedYellow = digitalio.DigitalInOut(board.GP17)
externalLedYellow.switch_to_output()

while True:
  externalLedYellow.value = True
  externalLedBlue.value = False
  time.sleep(0.5)
  externalLedYellow.value = False
  externalLedBlue.value = True
  time.sleep(0.5)