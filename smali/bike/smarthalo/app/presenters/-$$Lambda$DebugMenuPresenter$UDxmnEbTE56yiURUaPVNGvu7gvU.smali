.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:I

.field private final synthetic f$2:I

.field private final synthetic f$3:Lbike/smarthalo/sdk/models/OledAnimationType;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;IILbike/smarthalo/sdk/models/OledAnimationType;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;->f$1:I

    iput p3, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;->f$2:I

    iput-object p4, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;->f$3:Lbike/smarthalo/sdk/models/OledAnimationType;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;->f$1:I

    iget v2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;->f$2:I

    iget-object v3, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$UDxmnEbTE56yiURUaPVNGvu7gvU;->f$3:Lbike/smarthalo/sdk/models/OledAnimationType;

    invoke-static {v0, v1, v2, v3}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$getCarouselObservable$37(Lbike/smarthalo/app/presenters/DebugMenuPresenter;IILbike/smarthalo/sdk/models/OledAnimationType;)V

    return-void
.end method
