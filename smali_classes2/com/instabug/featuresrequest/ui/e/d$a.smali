.class Lcom/instabug/featuresrequest/ui/e/d$a;
.super Ljava/lang/Object;
.source "AddNewFeaturePresenter.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/e/d;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/Boolean;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/featuresrequest/d/b;

.field final synthetic b:Lcom/instabug/featuresrequest/ui/e/d;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/e/d;Lcom/instabug/featuresrequest/d/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->b:Lcom/instabug/featuresrequest/ui/e/d;

    iput-object p2, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Boolean;)V
    .locals 1
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "featureRequest "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " synced successfully"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AddNewFeaturePresenter"

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->b:Lcom/instabug/featuresrequest/ui/e/d;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/d;->a(Lcom/instabug/featuresrequest/ui/e/d;)Lcom/instabug/featuresrequest/ui/e/b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->b:Lcom/instabug/featuresrequest/ui/e/d;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/d;->a(Lcom/instabug/featuresrequest/ui/e/d;)Lcom/instabug/featuresrequest/ui/e/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/e/b;->q()V

    .line 6
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->b:Lcom/instabug/featuresrequest/ui/e/d;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/d;->a(Lcom/instabug/featuresrequest/ui/e/d;)Lcom/instabug/featuresrequest/ui/e/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/e/b;->B()V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong while sending featureRequest: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->a:Lcom/instabug/featuresrequest/d/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AddNewFeaturePresenter"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->b:Lcom/instabug/featuresrequest/ui/e/d;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/d;->a(Lcom/instabug/featuresrequest/ui/e/d;)Lcom/instabug/featuresrequest/ui/e/b;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 10
    :cond_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->b:Lcom/instabug/featuresrequest/ui/e/d;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/d;->a(Lcom/instabug/featuresrequest/ui/e/d;)Lcom/instabug/featuresrequest/ui/e/b;

    move-result-object p1

    invoke-interface {p1}, Lcom/instabug/featuresrequest/ui/e/b;->q()V

    .line 11
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->b:Lcom/instabug/featuresrequest/ui/e/d;

    invoke-static {p1}, Lcom/instabug/featuresrequest/ui/e/d;->a(Lcom/instabug/featuresrequest/ui/e/d;)Lcom/instabug/featuresrequest/ui/e/b;

    move-result-object p1

    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/e/d$a;->b:Lcom/instabug/featuresrequest/ui/e/d;

    invoke-static {v0}, Lcom/instabug/featuresrequest/ui/e/d;->a(Lcom/instabug/featuresrequest/ui/e/d;)Lcom/instabug/featuresrequest/ui/e/b;

    move-result-object v0

    invoke-interface {v0}, Lcom/instabug/library/core/ui/BaseContract$View;->getViewContext()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    sget v1, Lcom/instabug/featuresrequest/R$string;->feature_request_str_add_comment_error:I

    .line 12
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 13
    invoke-interface {p1, v0}, Lcom/instabug/featuresrequest/ui/e/b;->c(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/e/d$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/e/d$a;->a(Ljava/lang/Boolean;)V

    return-void
.end method
