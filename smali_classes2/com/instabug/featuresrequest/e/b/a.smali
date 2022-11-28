.class public Lcom/instabug/featuresrequest/e/b/a;
.super Ljava/lang/Object;
.source "FeatureRequestsRepository.java"


# static fields
.field private static b:Lcom/instabug/featuresrequest/e/b/a;


# instance fields
.field private a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/instabug/featuresrequest/e/b/a;->a:Landroid/content/Context;

    return-void
.end method

.method public static a(Landroid/content/Context;)Lcom/instabug/featuresrequest/e/b/a;
    .locals 1

    .line 1
    sget-object v0, Lcom/instabug/featuresrequest/e/b/a;->b:Lcom/instabug/featuresrequest/e/b/a;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/instabug/featuresrequest/e/b/a;

    invoke-direct {v0, p0}, Lcom/instabug/featuresrequest/e/b/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instabug/featuresrequest/e/b/a;->b:Lcom/instabug/featuresrequest/e/b/a;

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(JLcom/instabug/featuresrequest/e/b/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/instabug/featuresrequest/e/b/b<",
            "Lcom/instabug/featuresrequest/d/g;",
            ">;)V"
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-static {}, Lcom/instabug/featuresrequest/network/service/b;->a()Lcom/instabug/featuresrequest/network/service/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/featuresrequest/e/b/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/instabug/featuresrequest/e/b/a$a;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/instabug/featuresrequest/e/b/a$a;-><init>(Lcom/instabug/featuresrequest/e/b/a;JLcom/instabug/featuresrequest/e/b/b;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/instabug/featuresrequest/network/service/b;->a(Landroid/content/Context;JLcom/instabug/library/network/Request$Callbacks;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/instabug/featuresrequest/d/d;Lcom/instabug/featuresrequest/e/b/b;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instabug/featuresrequest/d/d;",
            "Lcom/instabug/featuresrequest/e/b/b<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    .line 27
    :try_start_0
    invoke-static {}, Lcom/instabug/featuresrequest/network/service/b;->a()Lcom/instabug/featuresrequest/network/service/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/featuresrequest/e/b/a;->a:Landroid/content/Context;

    new-instance v2, Lcom/instabug/featuresrequest/e/b/a$b;

    invoke-direct {v2, p0, p2}, Lcom/instabug/featuresrequest/e/b/a$b;-><init>(Lcom/instabug/featuresrequest/e/b/a;Lcom/instabug/featuresrequest/e/b/b;)V

    invoke-virtual {v0, v1, p1, v2}, Lcom/instabug/featuresrequest/network/service/b;->a(Landroid/content/Context;Lcom/instabug/featuresrequest/d/d;Lcom/instabug/library/network/Request$Callbacks;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 46
    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string p2, "something went wrong while trying to add new comment"

    .line 47
    :goto_0
    invoke-static {p0, p2, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method
