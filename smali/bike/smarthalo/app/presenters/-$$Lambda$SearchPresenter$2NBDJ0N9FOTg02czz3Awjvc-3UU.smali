.class public final synthetic Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

.field private final synthetic f$1:Ljava/util/List;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;->f$1:Ljava/util/List;

    iput-boolean p3, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;->f$0:Lbike/smarthalo/app/presenters/SearchPresenter;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;->f$1:Ljava/util/List;

    iget-boolean v2, p0, Lbike/smarthalo/app/presenters/-$$Lambda$SearchPresenter$2NBDJ0N9FOTg02czz3Awjvc-3UU;->f$2:Z

    invoke-static {v0, v1, v2}, Lbike/smarthalo/app/presenters/SearchPresenter;->lambda$updateViewResults$6(Lbike/smarthalo/app/presenters/SearchPresenter;Ljava/util/List;Z)V

    return-void
.end method
