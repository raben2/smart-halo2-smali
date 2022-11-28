.class public Lbike/smarthalo/sdk/models/DeviceSerials;
.super Ljava/lang/Object;
.source "DeviceSerials.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/sdk/models/DeviceSerials$DeviceSerialsInterface;
    }
.end annotation


# instance fields
.field public lock:Ljava/lang/String;

.field public pcba:Ljava/lang/String;

.field public product:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->product:Ljava/lang/String;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->pcba:Ljava/lang/String;

    .line 27
    iput-object p1, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->lock:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->product:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->pcba:Ljava/lang/String;

    const/4 p1, 0x0

    .line 21
    iput-object p1, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->lock:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->product:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->pcba:Ljava/lang/String;

    .line 15
    iput-object p3, p0, Lbike/smarthalo/sdk/models/DeviceSerials;->lock:Ljava/lang/String;

    return-void
.end method
