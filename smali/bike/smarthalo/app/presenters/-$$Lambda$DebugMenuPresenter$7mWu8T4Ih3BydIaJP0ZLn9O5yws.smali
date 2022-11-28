.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/app/presenters/DebugMenuPresenter$AnimationRunnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:I

.field private final synthetic f$2:[I

.field private final synthetic f$3:[I


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I[I[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;->f$1:I

    iput-object p3, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;->f$2:[I

    iput-object p4, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;->f$3:[I

    return-void
.end method


# virtual methods
.method public final run(Lbike/smarthalo/sdk/SHDeviceServiceBinder;)V
    .locals 4

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;->f$1:I

    iget-object v2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;->f$2:[I

    iget-object v3, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$7mWu8T4Ih3BydIaJP0ZLn9O5yws;->f$3:[I

    invoke-static {v0, v1, v2, v3, p1}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$showRoundabout$15(Lbike/smarthalo/app/presenters/DebugMenuPresenter;I[I[ILbike/smarthalo/sdk/SHDeviceServiceBinder;)V

    return-void
.end method
