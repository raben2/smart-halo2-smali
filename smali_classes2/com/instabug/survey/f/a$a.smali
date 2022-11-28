.class Lcom/instabug/survey/f/a$a;
.super Ljava/lang/Object;
.source "CountryInfoResolver.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/f/a;->a(Landroid/content/Context;)V
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
.field final synthetic a:Lcom/instabug/survey/f/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/f/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/f/a$a;->a:Lcom/instabug/survey/f/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 14
    iget-object v0, p0, Lcom/instabug/survey/f/a$a;->a:Lcom/instabug/survey/f/a;

    invoke-static {v0}, Lcom/instabug/survey/f/a;->a(Lcom/instabug/survey/f/a;)Lcom/instabug/survey/f/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instabug/survey/f/a$b;->onError(Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 2
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolveCountryCode succeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/instabug/survey/models/a;

    invoke-direct {v0}, Lcom/instabug/survey/models/a;-><init>()V

    .line 4
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/instabug/survey/models/a;->fromJson(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/instabug/survey/f/a$a;->a:Lcom/instabug/survey/f/a;

    invoke-static {p1}, Lcom/instabug/survey/f/a;->a(Lcom/instabug/survey/f/a;)Lcom/instabug/survey/f/a$b;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/instabug/survey/f/a$b;->a(Lcom/instabug/survey/models/a;)V

    .line 6
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/instabug/survey/g/c;->a(J)V

    .line 7
    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/instabug/survey/d/d/a;->b(J)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lorg/json/JSONException;->printStackTrace()V

    .line 10
    iget-object v0, p0, Lcom/instabug/survey/f/a$a;->a:Lcom/instabug/survey/f/a;

    invoke-static {v0}, Lcom/instabug/survey/f/a;->a(Lcom/instabug/survey/f/a;)Lcom/instabug/survey/f/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/instabug/survey/f/a$b;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string p1, "resolveCountryCode succeed: but response is null"

    .line 13
    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/f/a$a;->a(Ljava/lang/Throwable;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/survey/f/a$a;->a(Lorg/json/JSONObject;)V

    return-void
.end method
