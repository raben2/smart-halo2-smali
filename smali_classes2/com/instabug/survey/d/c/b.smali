.class public Lcom/instabug/survey/d/c/b;
.super Ljava/lang/Object;
.source "AnnouncementConfig.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Lcom/instabug/survey/d/c/d;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/instabug/survey/d/c/b;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 9
    :cond_0
    new-instance v0, Lcom/instabug/survey/d/c/b;

    invoke-direct {v0}, Lcom/instabug/survey/d/c/b;-><init>()V

    :try_start_0
    const-string v1, "download_links"

    .line 11
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/instabug/survey/d/c/d;->a(Lorg/json/JSONObject;)Lcom/instabug/survey/d/c/d;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/instabug/survey/d/c/b;->a(Lcom/instabug/survey/d/c/d;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0
.end method

.method public static a(Lcom/instabug/survey/d/c/b;)Lorg/json/JSONObject;
    .locals 2
    .param p0    # Lcom/instabug/survey/d/c/b;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/b;->a()Lcom/instabug/survey/d/c/d;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/instabug/survey/d/c/b;->a()Lcom/instabug/survey/d/c/d;

    move-result-object p0

    invoke-static {p0}, Lcom/instabug/survey/d/c/d;->a(Lcom/instabug/survey/d/c/d;)Lorg/json/JSONObject;

    move-result-object p0

    const-string v1, "download_links"

    .line 8
    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public a()Lcom/instabug/survey/d/c/d;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/d/c/b;->a:Lcom/instabug/survey/d/c/d;

    return-object v0
.end method

.method public a(Lcom/instabug/survey/d/c/d;)V
    .locals 0
    .param p1    # Lcom/instabug/survey/d/c/d;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    iput-object p1, p0, Lcom/instabug/survey/d/c/b;->a:Lcom/instabug/survey/d/c/d;

    return-void
.end method
