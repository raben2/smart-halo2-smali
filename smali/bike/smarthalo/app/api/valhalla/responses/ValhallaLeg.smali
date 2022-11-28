.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaLeg;
.super Ljava/lang/Object;
.source "ValhallaLeg.java"


# instance fields
.field private maneuvers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;",
            ">;"
        }
    .end annotation
.end field

.field private shape:Ljava/lang/String;

.field private summary:Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getManeuvers()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaManeuver;",
            ">;"
        }
    .end annotation

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLeg;->maneuvers:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getShape()Ljava/lang/String;
    .locals 1

    .line 15
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLeg;->shape:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;
    .locals 1

    .line 19
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaLeg;->summary:Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;

    return-object v0
.end method
