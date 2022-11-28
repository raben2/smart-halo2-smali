.class Lcom/instabug/survey/d/a$d;
.super Ljava/lang/Object;
.source "AnnouncementManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/d/a;->i()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/d/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/d/a$d;->a:Lcom/instabug/survey/d/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/survey/d/a$d;->a:Lcom/instabug/survey/d/a;

    invoke-static {v0}, Lcom/instabug/survey/d/a;->b(Lcom/instabug/survey/d/a;)I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/d/a$d;->a:Lcom/instabug/survey/d/a;

    invoke-static {v0}, Lcom/instabug/survey/d/a;->c(Lcom/instabug/survey/d/a;)Lcom/instabug/survey/d/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/d/b;->a()Lcom/instabug/survey/d/c/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/instabug/survey/d/a$d;->a:Lcom/instabug/survey/d/a;

    invoke-static {v1, v0}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;Lcom/instabug/survey/d/c/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    const-class v1, Lcom/instabug/survey/d/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
