.class Lcom/instabug/survey/d/a$b;
.super Ljava/lang/Object;
.source "AnnouncementManager.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/d/a;->a(Ljava/lang/String;)V
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
.field final synthetic a:Lcom/instabug/survey/d/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/d/a$b;->a:Lcom/instabug/survey/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/instabug/survey/d/a$b;->a:Lcom/instabug/survey/d/a;

    invoke-static {v0, p1}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;Ljava/lang/Throwable;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 3
    .param p1    # Lorg/json/JSONObject;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    :try_start_0
    invoke-static {}, Lcom/instabug/survey/d/d/a;->c()Lcom/instabug/survey/d/d/a;

    move-result-object v0

    invoke-static {}, Lcom/instabug/library/util/TimeUtils;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/d/d/a;->a(J)V

    if-eqz p1, :cond_0

    .line 3
    invoke-static {p1}, Lcom/instabug/survey/d/c/a;->a(Lorg/json/JSONObject;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/d/a$b;->a:Lcom/instabug/survey/d/a;

    invoke-static {v0, p1}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;Ljava/util/List;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/instabug/survey/d/a$b;->a:Lcom/instabug/survey/d/a;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "json response is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;Ljava/lang/Throwable;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    iget-object v0, p0, Lcom/instabug/survey/d/a$b;->a:Lcom/instabug/survey/d/a;

    invoke-static {v0, p1}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/a$b;->a(Ljava/lang/Throwable;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/survey/d/a$b;->a(Lorg/json/JSONObject;)V

    return-void
.end method
