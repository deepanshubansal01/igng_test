//
// Created by deepanshu on 5/24/22.
//

#include <iostream>

#include "sdf/Root.hh"
#include "sdf/Link.hh"
#include "sdf/Model.hh"

#include "ignition/math/Inertial.hh"

int main(int argc, char *argv[]) {

  sdf::Root root;
  if (!root.Load(argv[1]).empty()) {
    std::cout << "Returning 1" << std::endl;
    return -1;
  }

  const sdf::Model * model = root.Model();
  if (!model){
    std::cout << "Returning 2" << std::endl;
    return -1;
  }

  std::cout << "Link count: << " << model->LinkCount() << std::endl;

  ignition::math::Inertiald inertia_1 =  model->LinkByName("box_1")->Inertial();
  ignition::math::Inertiald inertia_2 =  model->LinkByName("box_2")->Inertial();
  ignition::math::Inertiald total = inertia_1 + inertia_2;

  std::cout << "Raw pose: " << model->LinkByName("box_1")->RawPose().X() << std::endl;

  std::cout << "mass 1: " << inertia_1.MassMatrix().Mass() << std::endl;
  std::cout << "mass 2: " << inertia_2.MassMatrix().Mass()  << std::endl;
  std::cout << "Total mass: " << total.MassMatrix().Mass() << std::endl;
github

  std::cout << "Ixx 1: " <<  inertia_1.Moi()(0, 0) << " " <<  "Iyy 1: " <<  inertia_1.Moi()(1, 1) << std::endl;
  std::cout << "Ixx 2: " <<  inertia_2.Moi()(0, 0) << " " <<  "Iyy 2: " <<  inertia_2.Moi()(1, 1) << std::endl;
  std::cout << "Ixx 3: " <<  total.Moi()(0, 0) << " " <<  "Iyy 3: " <<  total.Moi()(1, 1) << std::endl;


  std::cout << inertia_1.Pose().X() << " " <<  inertia_1.Pose().Y() << " " << inertia_1.Pose().Z() << std::endl;
  std::cout << inertia_2.Pose().X() << " " <<  inertia_2.Pose().Y() << " " << inertia_2.Pose().Z() << std::endl;
  std::cout << total.Pose().X() << " " <<  total.Pose().Y() << " " << total.Pose().Z() << std::endl;


//  ignition::math::Inertiald totalInertial;
//
//  for (int i = 0; i < model->LinkCount(); i++) {
//    ignition::math::Pose3d linkPoseRelativeToModel;
//    auto errors = model->LinkByIndex(i)->SemanticPose().Resolve(linkPoseRelativeToModel, "__model__");
//
//    auto currentLinkInertial = model->LinkByIndex(i)->Inertial();
//    currentLinkInertial.SetPose(linkPoseRelativeToModel * currentLinkInertial.Pose());
//    totalInertial += currentLinkInertial;
//  }
//
//  auto totalMass = totalInertial.MassMatrix().Mass();
//  auto xCentreOfMass = totalInertial.Pose().Pos().X();
//  auto yCentreOfMass = totalInertial.Pose().Pos().Y();
//  auto zCentreOfMass = totalInertial.Pose().Pos().Z();
//
//  std::cout << "Total mass: " << totalMass << std::endl;
//
//  std::cout << "Centre of mass: " << std::endl;
//  std::cout << "X: " << xCentreOfMass << std::endl;
//  std::cout << "Y: " << yCentreOfMass << std::endl;
//  std::cout << "Z: " << zCentreOfMass << std::endl;
//
//  std::cout << "Moment of Inertia: " << std::endl;
//  std::cout << totalInertial.Moi() << std::endl;

  return 0;
}