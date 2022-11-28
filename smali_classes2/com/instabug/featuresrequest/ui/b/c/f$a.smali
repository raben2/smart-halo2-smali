.class Lcom/instabug/featuresrequest/ui/b/c/f$a;
.super Ljava/lang/Object;
.source "FeaturesListPresenter.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/featuresrequest/ui/b/c/f;->a(Lcom/instabug/featuresrequest/ui/b/b;IZZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Lorg/json/JSONObject;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/instabug/featuresrequest/ui/b/b;

.field final synthetic c:Lcom/instabug/featuresrequest/ui/b/c/f;


# direct methods
.method constructor <init>(Lcom/instabug/featuresrequest/ui/b/c/f;ZLcom/instabug/featuresrequest/ui/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->c:Lcom/instabug/featuresrequest/ui/b/c/f;

    iput-boolean p2, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->a:Z

    iput-object p3, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FeaturesListPresenter"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 28
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->c:Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->i()V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lorg/json/JSONException;

    const-string v0, "response json is null"

    invoke-direct {p1, v0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/b/c/f$a;->a(Ljava/lang/Throwable;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/instabug/featuresrequest/d/c;->a(Lorg/json/JSONObject;)Lcom/instabug/featuresrequest/d/c;

    move-result-object p1

    .line 9
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/c;->b()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/c;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 11
    iget-boolean v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->a:Z

    if-eqz v0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {v0}, Lcom/instabug/featuresrequest/ui/b/b;->a()V

    .line 14
    :cond_1
    iget-object v0, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->b:Lcom/instabug/featuresrequest/ui/b/b;

    .line 15
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/c;->b()Ljava/util/List;

    move-result-object v1

    .line 16
    invoke-virtual {v0, v1}, Lcom/instabug/featuresrequest/ui/b/b;->a(Ljava/util/List;)V

    .line 18
    invoke-virtual {p1}, Lcom/instabug/featuresrequest/d/c;->c()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 19
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->b:Lcom/instabug/featuresrequest/ui/b/b;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/b;->f()V

    goto :goto_0

    .line 21
    :cond_2
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->b:Lcom/instabug/featuresrequest/ui/b/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/instabug/featuresrequest/ui/b/b;->a(Z)V

    .line 24
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/instabug/featuresrequest/ui/b/c/f$a;->c:Lcom/instabug/featuresrequest/ui/b/c/f;

    invoke-virtual {p1}, Lcom/instabug/featuresrequest/ui/b/c/f;->h()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/b/c/f$a;->a(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/b/c/f$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/instabug/featuresrequest/ui/b/c/f$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
