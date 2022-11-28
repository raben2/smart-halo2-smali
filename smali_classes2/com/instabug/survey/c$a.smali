.class Lcom/instabug/survey/c$a;
.super Ljava/lang/Object;
.source "SurveysManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/c;->d(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/instabug/survey/c;


# direct methods
.method constructor <init>(Lcom/instabug/survey/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/c$a;->b:Lcom/instabug/survey/c;

    iput-object p2, p0, Lcom/instabug/survey/c$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/instabug/survey/c$a;->b:Lcom/instabug/survey/c;

    invoke-static {v0}, Lcom/instabug/survey/c;->a(Lcom/instabug/survey/c;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/c$a;->b:Lcom/instabug/survey/c;

    invoke-static {v0}, Lcom/instabug/survey/c;->b(Lcom/instabug/survey/c;)Lcom/instabug/survey/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/c$a;->b:Lcom/instabug/survey/c;

    invoke-static {v1}, Lcom/instabug/survey/c;->a(Lcom/instabug/survey/c;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/instabug/survey/f/b;->a(Landroid/content/Context;)V

    .line 4
    iget-object v0, p0, Lcom/instabug/survey/c$a;->b:Lcom/instabug/survey/c;

    invoke-static {v0}, Lcom/instabug/survey/c;->b(Lcom/instabug/survey/c;)Lcom/instabug/survey/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/survey/c$a;->b:Lcom/instabug/survey/c;

    invoke-static {v1}, Lcom/instabug/survey/c;->a(Lcom/instabug/survey/c;)Ljava/lang/ref/WeakReference;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-object v2, p0, Lcom/instabug/survey/c$a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/instabug/survey/f/b;->a(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 7
    const-class v1, Lcom/instabug/survey/f/b;

    invoke-virtual {v1}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    .line 8
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "json exception in surveys manager while fetching surveys "

    .line 10
    :goto_0
    invoke-static {v1, v2, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method
