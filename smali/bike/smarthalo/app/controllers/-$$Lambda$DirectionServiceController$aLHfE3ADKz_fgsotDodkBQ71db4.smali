.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$aLHfE3ADKz_fgsotDodkBQ71db4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/DirectionServiceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$aLHfE3ADKz_fgsotDodkBQ71db4;->f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$DirectionServiceController$aLHfE3ADKz_fgsotDodkBQ71db4;->f$0:Lbike/smarthalo/app/controllers/DirectionServiceController;

    check-cast p1, Lbike/smarthalo/app/models/PresentationNavigationState;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/DirectionServiceController;->lambda$onDirectionServiceConnected$0(Lbike/smarthalo/app/controllers/DirectionServiceController;Lbike/smarthalo/app/models/PresentationNavigationState;)V

    return-void
.end method
