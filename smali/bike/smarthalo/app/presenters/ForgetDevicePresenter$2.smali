.class Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;
.super Lbike/smarthalo/sdk/CmdCallback;
.source "ForgetDevicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->forgetDevice(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

.field final synthetic val$cb:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;


# direct methods
.method constructor <init>(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    iput-object p2, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->val$cb:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    invoke-direct {p0}, Lbike/smarthalo/sdk/CmdCallback;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onFail$1(Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
    .locals 1

    .line 97
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    invoke-static {v0}, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->access$100(Lbike/smarthalo/app/presenters/ForgetDevicePresenter;)V

    const/4 v0, 0x0

    .line 98
    invoke-interface {p1, v0}, Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;->onComplete(Z)V

    return-void
.end method

.method static synthetic lambda$onSuccess$0(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V
    .locals 1

    const/4 v0, 0x1

    .line 91
    invoke-interface {p0, v0}, Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;->onComplete(Z)V

    return-void
.end method


# virtual methods
.method public onFail()V
    .locals 3

    .line 96
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    iget-object v0, v0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->val$cb:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$JTSw-Ok1aPSoAGReyEKkeFvbLlY;

    invoke-direct {v2, p0, v1}, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$JTSw-Ok1aPSoAGReyEKkeFvbLlY;-><init>(Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V

    invoke-static {v0, v2}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 3

    .line 91
    iget-object v0, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->this$0:Lbike/smarthalo/app/presenters/ForgetDevicePresenter;

    iget-object v0, v0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter;->context:Landroid/content/Context;

    iget-object v1, p0, Lbike/smarthalo/app/presenters/ForgetDevicePresenter$2;->val$cb:Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;

    new-instance v2, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$IroqYfJ8kcXsCBzd11TDHNTGhq4;

    invoke-direct {v2, v1}, Lbike/smarthalo/app/presenters/-$$Lambda$ForgetDevicePresenter$2$IroqYfJ8kcXsCBzd11TDHNTGhq4;-><init>(Lbike/smarthalo/app/presenters/BasePresenter$BasePresenterCallback;)V

    invoke-static {v0, v2}, Lbike/smarthalo/sdk/ContextHelper;->runOnMainThread(Landroid/content/Context;Ljava/lang/Runnable;)V

    return-void
.end method
