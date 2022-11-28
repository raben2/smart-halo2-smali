.class Lcom/instabug/library/logging/InstabugLog$b;
.super Ljava/lang/Object;
.source "InstabugLog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instabug/library/logging/InstabugLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Lcom/instabug/library/logging/InstabugLog$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:J


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(J)Lcom/instabug/library/logging/InstabugLog$b;
    .locals 0

    .line 4
    iput-wide p1, p0, Lcom/instabug/library/logging/InstabugLog$b;->c:J

    return-object p0
.end method

.method a(Lcom/instabug/library/logging/InstabugLog$a;)Lcom/instabug/library/logging/InstabugLog$b;
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/instabug/library/logging/InstabugLog$b;->b:Lcom/instabug/library/logging/InstabugLog$a;

    return-object p0
.end method

.method a(Ljava/lang/String;)Lcom/instabug/library/logging/InstabugLog$b;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/instabug/library/logging/InstabugLog$b;->a:Ljava/lang/String;

    return-object p0
.end method

.method a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugLog$b;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/instabug/library/logging/InstabugLog$b;->c:J

    return-wide v0
.end method

.method c()Lcom/instabug/library/logging/InstabugLog$a;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/instabug/library/logging/InstabugLog$b;->b:Lcom/instabug/library/logging/InstabugLog$a;

    return-object v0
.end method

.method public d()Lorg/json/JSONObject;
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ERADICATE_PARAMETER_NOT_NULLABLE"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "log_message"

    .line 3
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/logging/InstabugLog$b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    invoke-virtual {p0}, Lcom/instabug/library/logging/InstabugLog$b;->c()Lcom/instabug/library/logging/InstabugLog$a;

    move-result-object v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_0

    const-string v1, "log_message_level"

    .line 5
    :try_start_1
    invoke-virtual {p0}, Lcom/instabug/library/logging/InstabugLog$b;->c()Lcom/instabug/library/logging/InstabugLog$a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/instabug/library/logging/InstabugLog$a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    const-string v1, "log_message_date"

    .line 7
    :try_start_2
    invoke-virtual {p0}, Lcom/instabug/library/logging/InstabugLog$b;->b()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 9
    const-class v2, Lcom/instabug/library/logging/InstabugLog;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-object v0
.end method
