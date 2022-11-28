.class final Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeNavigationState$1;
.super Ljava/lang/Object;
.source "CarouselController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->observeNavigationState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "isNavigating",
        "",
        "kotlin.jvm.PlatformType",
        "accept",
        "(Ljava/lang/Boolean;)V"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeNavigationState$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Boolean;)V
    .locals 2

    .line 158
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeNavigationState$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;

    invoke-static {v0}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->access$getCarouselMask$p(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;)Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;

    move-result-object v0

    const-string v1, "isNavigating"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselMask;->hasNavigation:Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeNavigationState$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
