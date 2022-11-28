.class public Lbike/smarthalo/app/managers/LocationUpdateSubscriber;
.super Ljava/lang/Object;
.source "LocationUpdateSubscriber.java"


# instance fields
.field private subscriberId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;->subscriberId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 18
    check-cast p1, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;

    if-eqz p1, :cond_0

    .line 19
    iget-object p1, p1, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;->subscriberId:Ljava/lang/String;

    iget-object v0, p0, Lbike/smarthalo/app/managers/LocationUpdateSubscriber;->subscriberId:Ljava/lang/String;

    .line 20
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
