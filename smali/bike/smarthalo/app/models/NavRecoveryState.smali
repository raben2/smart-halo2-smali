.class public Lbike/smarthalo/app/models/NavRecoveryState;
.super Ljava/lang/Object;
.source "NavRecoveryState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;
    }
.end annotation


# instance fields
.field public navRecoveryAction:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

.field public shouldSetupNavigationCamera:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lbike/smarthalo/app/models/NavRecoveryState;->shouldSetupNavigationCamera:Z

    .line 9
    sget-object v0, Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;->None:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    iput-object v0, p0, Lbike/smarthalo/app/models/NavRecoveryState;->navRecoveryAction:Lbike/smarthalo/app/models/NavRecoveryState$NavRecoveryAction;

    return-void
.end method
