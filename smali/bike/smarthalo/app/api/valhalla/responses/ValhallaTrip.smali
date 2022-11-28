.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;
.super Ljava/lang/Object;
.source "ValhallaTrip.java"


# instance fields
.field private language:Ljava/lang/String;

.field private legs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaLeg;",
            ">;"
        }
    .end annotation
.end field

.field private locations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaLocation;",
            ">;"
        }
    .end annotation
.end field

.field private status:I

.field private status_message:Ljava/lang/String;

.field private summary:Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;

.field private units:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLanguage()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLegs()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaLeg;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;->legs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLocations()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaLocation;",
            ">;"
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;->locations:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 43
    iget v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;->status:I

    return v0
.end method

.method public getStatus_message()Ljava/lang/String;
    .locals 1

    .line 39
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;->status_message:Ljava/lang/String;

    return-object v0
.end method

.method public getSummary()Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;
    .locals 1

    .line 23
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;->summary:Lbike/smarthalo/app/api/valhalla/responses/ValhallaSummary;

    return-object v0
.end method

.method public getUnits()Ljava/lang/String;
    .locals 1

    .line 31
    iget-object v0, p0, Lbike/smarthalo/app/api/valhalla/responses/ValhallaTrip;->units:Ljava/lang/String;

    return-object v0
.end method
