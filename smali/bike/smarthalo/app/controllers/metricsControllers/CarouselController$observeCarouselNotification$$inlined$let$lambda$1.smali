.class final Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeCarouselNotification$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "CarouselController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->observeCarouselNotification()V
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
        "Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;",
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
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "carouselPosition",
        "Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;",
        "kotlin.jvm.PlatformType",
        "accept",
        "bike/smarthalo/app/controllers/metricsControllers/CarouselController$observeCarouselNotification$1$1"
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

    iput-object p1, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeCarouselNotification$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V
    .locals 2

    .line 80
    iget-object v0, p0, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeCarouselNotification$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;

    const-string v1, "carouselPosition"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;->access$handleNewNotification(Lbike/smarthalo/app/controllers/metricsControllers/CarouselController;Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 24
    check-cast p1, Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/metricsControllers/CarouselController$observeCarouselNotification$$inlined$let$lambda$1;->accept(Lbike/smarthalo/sdk/commands/carousel/MetricsCarouselPosition;)V

    return-void
.end method
