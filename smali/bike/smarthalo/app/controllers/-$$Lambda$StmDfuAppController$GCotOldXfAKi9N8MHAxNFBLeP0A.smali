.class public final synthetic Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$GCotOldXfAKi9N8MHAxNFBLeP0A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/controllers/StmDfuAppController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$GCotOldXfAKi9N8MHAxNFBLeP0A;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lbike/smarthalo/app/controllers/-$$Lambda$StmDfuAppController$GCotOldXfAKi9N8MHAxNFBLeP0A;->f$0:Lbike/smarthalo/app/controllers/StmDfuAppController;

    check-cast p1, Lbike/smarthalo/app/models/GenericResponse;

    invoke-static {v0, p1}, Lbike/smarthalo/app/controllers/StmDfuAppController;->lambda$initializeDfu$1(Lbike/smarthalo/app/controllers/StmDfuAppController;Lbike/smarthalo/app/models/GenericResponse;)V

    return-void
.end method
