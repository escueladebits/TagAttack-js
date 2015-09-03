/*
  Copyright 2015 Antonio Jesús Sánchez Padial
  
  See License info at the end of the file.
*/

abstract class Scene {
  protected TagAttack app;
  protected LuminancePalette palette;
  protected Scene otherScene;
  protected boolean pause;

  Scene (TagAttack app, LuminancePalette palette) {
    this.app = app;
    this.palette = palette;
  }
  abstract Scene update();
  
  
  abstract void start();
  
  void start(Scene otherScene) {
    this.otherScene = otherScene;
    this.start();
  }

  abstract void stop();

  abstract void draw();
  
  void pause() {
    pause = true;
  }

  void keyPressed() {
  }
  
  void keyReleased() {
  }
}

/*
  This file is part of Tag Attack.
  
  Tag Attack is free software: you can redistribute it and/or modify
  it under the terms of the GNU General Public License as published by
  the Free Software Foundation, either version 3 of the License, or
  (at your option) any later version.

  Tag Attack is distributed in the hope that it will be useful,
  but WITHOUT ANY WARRANTY; without even the implied warranty of
  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
  GNU General Public License for more details.

  You should have received a copy of the GNU General Public License
  along with this program.  If not, see <http://www.gnu.org/licenses/>.
*/