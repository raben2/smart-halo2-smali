.class Lbike/smarthalo/app/presenters/ScanResultsPresenter$2;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "ScanResultsPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/ScanResultsPresenter;->forgetDevice(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;

.field final synthetic val$cb:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/ScanResultsPresenter;Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter$2;->this$0:Lbike/smarthalo/app/presenters/ScanResultsPresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter$2;->val$cb:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 2

    .line 110
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter$2;->val$cb:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;->onComplete(Z)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 105
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ScanResultsPresenter$2;->val$cb:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;->onComplete(Z)V

    return-void
.end method
