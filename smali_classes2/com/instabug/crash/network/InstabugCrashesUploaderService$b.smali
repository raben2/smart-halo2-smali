.class Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;
.super Ljava/lang/Object;
.source "InstabugCrashesUploaderService.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/crash/network/InstabugCrashesUploaderService;->b(Lcom/instabug/crash/c/a;)V
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
        "Lcom/instabug/crash/c/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/crash/c/a;

.field final synthetic b:Lcom/instabug/crash/network/InstabugCrashesUploaderService;


# direct methods
.method constructor <init>(Lcom/instabug/crash/network/InstabugCrashesUploaderService;Lcom/instabug/crash/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;->b:Lcom/instabug/crash/network/InstabugCrashesUploaderService;

    iput-object p2, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;->a:Lcom/instabug/crash/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/crash/c/a;)V
    .locals 1

    const-string p1, "InstabugCrashesUploaderService"

    const-string v0, "Something went wrong while uploading crash logs"

    .line 18
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/lang/Boolean;)V
    .locals 2
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string p1, "InstabugCrashesUploaderService"

    const-string v0, "crash logs uploaded successfully, change its state"

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object p1, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;->a:Lcom/instabug/crash/c/a;

    sget-object v0, Lcom/instabug/crash/c/a$a;->ATTACHMENTS_READY_TO_BE_UPLOADED:Lcom/instabug/crash/c/a$a;

    invoke-virtual {p1, v0}, Lcom/instabug/crash/c/a;->a(Lcom/instabug/crash/c/a$a;)Lcom/instabug/crash/c/a;

    .line 7
    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    .line 8
    sget-object v0, Lcom/instabug/crash/c/a$a;->ATTACHMENTS_READY_TO_BE_UPLOADED:Lcom/instabug/crash/c/a$a;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash_state"

    invoke-virtual {p1, v1, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;->a:Lcom/instabug/crash/c/a;

    invoke-virtual {v0}, Lcom/instabug/crash/c/a;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/instabug/crash/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 12
    :try_start_0
    iget-object p1, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;->b:Lcom/instabug/crash/network/InstabugCrashesUploaderService;

    iget-object v0, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;->a:Lcom/instabug/crash/c/a;

    invoke-static {p1, v0}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->b(Lcom/instabug/crash/network/InstabugCrashesUploaderService;Lcom/instabug/crash/c/a;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 14
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Something went wrong while uploading crash attachments e: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "InstabugCrashesUploaderService"

    .line 17
    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/crash/c/a;

    invoke-virtual {p0, p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;->a(Lcom/instabug/crash/c/a;)V

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

    invoke-virtual {p0, p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService$b;->a(Ljava/lang/Boolean;)V

    return-void
.end method
