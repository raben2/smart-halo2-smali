.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;
.super Ljava/lang/Object;
.source "ValhallaManeuver.java"


# instance fields
.field private beginShapeIndex:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "begin_shape_index"
    .end annotation
.end field

.field private distance:Ljava/lang/Float;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "length"
    .end annotation
.end field

.field private endShapeIndex:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "end_shape_index"
    .end annotation
.end field

.field private ferry:Ljava/lang/Boolean;

.field private gate:Ljava/lang/Boolean;

.field private instruction:Ljava/lang/String;

.field private isClockwise:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "roundabout_clockwise"
    .end annotation
.end field

.field private rough:Ljava/lang/Boolean;

.field private roundaboutExitAngles:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "roundabout_exit_angle"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private roundaboutExitCount:Ljava/lang/Integer;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "roundabout_exit_count"
    .end annotation
.end field

.field private sign:Lbike/smarthalo/app/api/valhalla/responses/ValhallaSign;

.field private streetNames:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "street_names"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private time:Ljava/lang/Integer;

.field private toll:Ljava/lang/Boolean;

.field private travelMode:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "travel_mode"
    .end annotation
.end field

.field private travelType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "travel_type"
    .end annotation
.end field

.field private type:Ljava/lang/Integer;

.field private verbalPostTransitionInstruction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verbal_post_transition_instruction"
    .end annotation
.end field

.field private verbalPreTransitionInstruction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verbal_pre_transition_instruction"
    .end annotation
.end field

.field private verbalTransitionAlertInstruction:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "verbal_transition_alert_instruction"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBeginShapeIndex()Ljava/lang/Integer;
    .locals 1

    .line 90
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->beginShapeIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getDistance()Ljava/lang/Float;
    .locals 1

    .line 62
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->distance:Ljava/lang/Float;

    return-object v0
.end method

.method public getEndShapeIndex()Ljava/lang/Integer;
    .locals 1

    .line 70
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->endShapeIndex:Ljava/lang/Integer;

    return-object v0
.end method

.method public getFerry()Ljava/lang/Boolean;
    .locals 1

    .line 106
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->ferry:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getGate()Ljava/lang/Boolean;
    .locals 1

    .line 102
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->gate:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getInstruction()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->instruction:Ljava/lang/String;

    return-object v0
.end method

.method public getIsClockwise()Z
    .locals 1

    .line 118
    iget-boolean v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->isClockwise:Z

    return v0
.end method

.method public getRough()Ljava/lang/Boolean;
    .locals 1

    .line 98
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->rough:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getRoundaboutExitAngles()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->roundaboutExitAngles:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getRoundaboutExitCount()Ljava/lang/Integer;
    .locals 1

    .line 114
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->roundaboutExitCount:Ljava/lang/Integer;

    return-object v0
.end method

.method public getSign()Lbike/smarthalo/app/api/valhalla/responses/ValhallaSign;
    .locals 1

    .line 110
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->sign:Lbike/smarthalo/app/api/valhalla/responses/ValhallaSign;

    return-object v0
.end method

.method public getStreetNames()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->streetNames:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getTime()Ljava/lang/Integer;
    .locals 1

    .line 78
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->time:Ljava/lang/Integer;

    return-object v0
.end method

.method public getToll()Ljava/lang/Boolean;
    .locals 1

    .line 94
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->toll:Ljava/lang/Boolean;

    return-object v0
.end method

.method public getTravelMode()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->travelMode:Ljava/lang/String;

    return-object v0
.end method

.method public getTravelType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->travelType:Ljava/lang/String;

    return-object v0
.end method

.method public getType()Ljava/lang/Integer;
    .locals 1

    .line 74
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->type:Ljava/lang/Integer;

    return-object v0
.end method

.method public getVerbalPostTransitionInstruction()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->verbalPostTransitionInstruction:Ljava/lang/String;

    return-object v0
.end method

.method public getVerbalPreTransitionInstruction()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->verbalPreTransitionInstruction:Ljava/lang/String;

    return-object v0
.end method

.method public getVerbalTransitionAlertInstruction()Ljava/lang/String;
    .locals 1

    .line 58
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;->verbalTransitionAlertInstruction:Ljava/lang/String;

    return-object v0
.end method
