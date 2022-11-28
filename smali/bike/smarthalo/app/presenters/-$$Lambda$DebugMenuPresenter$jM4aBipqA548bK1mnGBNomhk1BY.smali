.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$jM4aBipqA548bK1mnGBNomhk1BY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lbike/smarthalo/sdk/bluetooth/StmDfuController$InitializeStmDfuCallback;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

.field private final synthetic f$1:[B


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/DebugMenuPresenter;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$jM4aBipqA548bK1mnGBNomhk1BY;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$jM4aBipqA548bK1mnGBNomhk1BY;->f$1:[B

    return-void
.end method


# virtual methods
.method public final onResult(ZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V
    .locals 2

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$jM4aBipqA548bK1mnGBNomhk1BY;->f$0:Lbike/smarthalo/app/presenters/DebugMenuPresenter;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$DebugMenuPresenter$jM4aBipqA548bK1mnGBNomhk1BY;->f$1:[B

    invoke-static {v0, v1, p1, p2}, Lbike/smarthalo/app/presenters/DebugMenuPresenter;->lambda$initializeStmDfu$4(Lbike/smarthalo/app/presenters/DebugMenuPresenter;[BZLbike/smarthalo/sdk/bluetooth/stmDfuModels/StmDfuInformation;)V

    return-void
.end method
