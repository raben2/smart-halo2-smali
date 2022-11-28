.class Lcom/instabug/survey/d/a$c;
.super Ljava/lang/Object;
.source "AnnouncementManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/d/a;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/d/c/a;

.field final synthetic b:Lcom/instabug/survey/d/a;


# direct methods
.method constructor <init>(Lcom/instabug/survey/d/a;Lcom/instabug/survey/d/c/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/d/a$c;->b:Lcom/instabug/survey/d/a;

    iput-object p2, p0, Lcom/instabug/survey/d/a$c;->a:Lcom/instabug/survey/d/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/survey/d/a$c;->a:Lcom/instabug/survey/d/c/a;

    invoke-virtual {v0}, Lcom/instabug/survey/d/c/a;->n()Lcom/instabug/survey/e/c/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/g;->f()Lcom/instabug/survey/e/c/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/survey/e/c/h;->a()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    iget-object v0, p0, Lcom/instabug/survey/d/a$c;->b:Lcom/instabug/survey/d/a;

    iget-object v1, p0, Lcom/instabug/survey/d/a$c;->a:Lcom/instabug/survey/d/c/a;

    invoke-static {v0, v1}, Lcom/instabug/survey/d/a;->a(Lcom/instabug/survey/d/a;Lcom/instabug/survey/d/c/a;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 4
    const-class v1, Lcom/instabug/survey/d/a;

    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
