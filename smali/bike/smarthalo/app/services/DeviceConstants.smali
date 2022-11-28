.class public Lbike/smarthalo/app/services/DeviceConstants;
.super Ljava/lang/Object;
.source "DeviceConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/services/DeviceConstants$Light;,
        Lbike/smarthalo/app/services/DeviceConstants$Fitness;,
        Lbike/smarthalo/app/services/DeviceConstants$Navigation;,
        Lbike/smarthalo/app/services/DeviceConstants$SMS;,
        Lbike/smarthalo/app/services/DeviceConstants$IncomingCall;,
        Lbike/smarthalo/app/services/DeviceConstants$Assistant;
    }
.end annotation


# static fields
.field public static final HSL_OFF:[I

.field public static final OFF:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    .line 12
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbike/smarthalo/app/services/DeviceConstants;->HSL_OFF:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getNavTurnColor()Lbike/smarthalo/sdk/models/SHColour;
    .locals 3

    .line 104
    new-instance v0, Lbike/smarthalo/sdk/models/SHColour;

    const/16 v1, 0xff

    const/16 v2, 0x43

    invoke-direct {v0, v2, v1, v1}, Lbike/smarthalo/sdk/models/SHColour;-><init>(III)V

    return-object v0
.end method
