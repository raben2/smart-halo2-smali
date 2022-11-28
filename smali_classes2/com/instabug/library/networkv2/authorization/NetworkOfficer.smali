.class public Lcom/instabug/library/networkv2/authorization/NetworkOfficer;
.super Ljava/lang/Object;
.source "NetworkOfficer.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    :try_start_0
    const-string v0, "ibg-native"

    .line 1
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/instabug/library/networkv2/request/Request;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 2
    invoke-static {}, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;->a()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "amx "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    .line 8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {}, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;->getClientId()Ljava/lang/String;

    move-result-object v4

    .line 11
    invoke-static {}, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;->getAppSecret()Ljava/lang/String;

    move-result-object v5

    .line 12
    invoke-static {p0, v4, v0, v1, v2}, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;->a(Lcom/instabug/library/networkv2/request/Request;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p0

    .line 13
    invoke-static {v5, p0}, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 15
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 16
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    .line 19
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static a(Lcom/instabug/library/networkv2/request/Request;Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/instabug/library/network/authorization/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    const-string p2, "POST"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 39
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestMethod()Ljava/lang/String;

    move-result-object p1

    const-string p2, "PUT"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 40
    :cond_1
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestBody()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 41
    invoke-static {p0}, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;->b(Lcom/instabug/library/networkv2/request/Request;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 43
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 46
    :cond_2
    const-class p0, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "failed to hash body"

    invoke-static {p0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 53
    :cond_3
    :goto_0
    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 55
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 24
    invoke-static {p0, p1}, Lcom/instabug/library/network/authorization/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static b(Lcom/instabug/library/networkv2/request/Request;)Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->isMultiPartRequest()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, ""

    return-object p0

    .line 4
    :cond_0
    invoke-static {p0}, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;->c(Lcom/instabug/library/networkv2/request/Request;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static c(Lcom/instabug/library/networkv2/request/Request;)Ljava/lang/String;
    .locals 3
    .param p0    # Lcom/instabug/library/networkv2/request/Request;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestBody()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/instabug/library/networkv2/request/Request;->getRequestBody()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/instabug/library/network/authorization/a;->b(Ljava/lang/String;)[B

    move-result-object p0

    const/4 v1, 0x2

    .line 5
    invoke-static {p0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    .line 7
    invoke-static {p0}, Lcom/instabug/library/network/authorization/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0

    :catch_0
    move-exception p0

    .line 16
    const-class v1, Lcom/instabug/library/networkv2/authorization/NetworkOfficer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "get singature base string"

    invoke-static {v1, v2, p0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static native getAppSecret()Ljava/lang/String;
.end method

.method public static native getClientId()Ljava/lang/String;
.end method
