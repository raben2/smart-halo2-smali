.class public Lcom/mikepenz/itemanimators/AlphaCrossFadeAnimator;
.super Lcom/mikepenz/itemanimators/DefaultAnimator;
.source "AlphaCrossFadeAnimator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/mikepenz/itemanimators/DefaultAnimator<",
        "Lcom/mikepenz/itemanimators/AlphaCrossFadeAnimator;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/mikepenz/itemanimators/DefaultAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddDelay(JJJ)J
    .locals 0

    const-wide/16 p1, 0x0

    return-wide p1
.end method

.method public getRemoveDelay(JJJ)J
    .locals 0

    const-wide/16 p3, 0x2

    .line 15
    div-long/2addr p1, p3

    return-wide p1
.end method
