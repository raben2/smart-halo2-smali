.class final Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$$inlined$let$lambda$1;
.super Ljava/lang/Object;
.source "IntroAnimationsController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->showIntroOnfirstConnection()V
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
        "Lbike/smarthalo/app/models/Ping;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIntroAnimationsController.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IntroAnimationsController.kt\nbike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$1$1\n*L\n1#1,52:1\n*E\n"
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
        "it",
        "Lbike/smarthalo/app/models/Ping;",
        "kotlin.jvm.PlatformType",
        "accept",
        "bike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;)V
    .locals 0

    iput-object p1, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Lbike/smarthalo/app/models/Ping;)V
    .locals 1

    .line 44
    iget-object p1, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;

    invoke-virtual {p1}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->getDestinationName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$$inlined$let$lambda$1;->this$0:Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;

    invoke-virtual {v0, p1}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController;->showIntroAnimation(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 12
    check-cast p1, Lbike/smarthalo/app/models/Ping;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/navigation/controllers/IntroAnimationsController$showIntroOnfirstConnection$$inlined$let$lambda$1;->accept(Lbike/smarthalo/app/models/Ping;)V

    return-void
.end method
