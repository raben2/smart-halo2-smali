.class public Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;
.super Ljava/lang/Object;
.source "ValhallaDirectionsOptions.java"


# instance fields
.field public language:Ljava/lang/String;

.field public narrative:Ljava/lang/String;

.field public properties:Ljava/lang/String;

.field public units:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "kilometers"

    .line 10
    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;->units:Ljava/lang/String;

    .line 11
    invoke-static {}, Lbike/smarthalo/app/helpers/PhoneInfoHelper;->getDeviceLanguage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;->language:Ljava/lang/String;

    const-string v0, "true"

    .line 12
    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;->narrative:Ljava/lang/String;

    const-string v0, "use|grades|surface|cycle_lane"

    .line 13
    iput-object v0, p0, Lbike/smarthalo/app/api/valhalla/gets/ValhallaDirectionsOptions;->properties:Ljava/lang/String;

    return-void
.end method
