.class Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;
.super Ljava/lang/Object;
.source "InstabugCrashesUploaderService.java"

# interfaces
.implements Lcom/instabug/library/network/Request$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/crash/network/InstabugCrashesUploaderService;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/instabug/library/network/Request$Callbacks<",
        "Ljava/lang/String;",
        "Ljava/lang/Throwable;",
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
    iput-object p1, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->b:Lcom/instabug/crash/network/InstabugCrashesUploaderService;

    iput-object p2, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->a:Lcom/instabug/crash/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    const-string p1, "InstabugCrashesUploaderService"

    const-string v0, "temporaryServerToken was null, aborting..."

    .line 1
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "crash uploaded successfully, setting crash TemporaryServerToken equal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstabugCrashesUploaderService"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->a:Lcom/instabug/crash/c/a;

    invoke-virtual {v0, p1}, Lcom/instabug/crash/c/a;->c(Ljava/lang/String;)Lcom/instabug/crash/c/a;

    .line 8
    iget-object v0, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->a:Lcom/instabug/crash/c/a;

    sget-object v1, Lcom/instabug/crash/c/a$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/crash/c/a$a;

    invoke-virtual {v0, v1}, Lcom/instabug/crash/c/a;->a(Lcom/instabug/crash/c/a$a;)Lcom/instabug/crash/c/a;

    .line 11
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "temporary_server_token"

    .line 12
    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    sget-object p1, Lcom/instabug/crash/c/a$a;->LOGS_READY_TO_BE_UPLOADED:Lcom/instabug/crash/c/a$a;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    const-string v1, "crash_state"

    invoke-virtual {v0, v1, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->a:Lcom/instabug/crash/c/a;

    invoke-virtual {p1}, Lcom/instabug/crash/c/a;->d()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/instabug/crash/b/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    .line 16
    iget-object p1, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->b:Lcom/instabug/crash/network/InstabugCrashesUploaderService;

    iget-object v0, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->a:Lcom/instabug/crash/c/a;

    invoke-static {p1, v0}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->a(Lcom/instabug/crash/network/InstabugCrashesUploaderService;Lcom/instabug/crash/c/a;)V

    .line 17
    iget-object p1, p0, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->b:Lcom/instabug/crash/network/InstabugCrashesUploaderService;

    invoke-static {p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService;->a(Lcom/instabug/crash/network/InstabugCrashesUploaderService;)V

    return-void
.end method

.method public a(Ljava/lang/Throwable;)V
    .locals 1

    const-string p1, "InstabugCrashesUploaderService"

    const-string v0, "Something went wrong while uploading crash"

    .line 18
    invoke-static {p1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onFailed(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->a(Ljava/lang/Throwable;)V

    return-void
.end method

.method public bridge synthetic onSucceeded(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/instabug/crash/network/InstabugCrashesUploaderService$a;->a(Ljava/lang/String;)V

    return-void
.end method
