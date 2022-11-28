.class final Lcom/instabug/bug/k/b/a$a;
.super Lio/reactivex/observers/DisposableObserver;
.source "ActivityViewInspector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/k/b/a;->b(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/reactivex/observers/DisposableObserver<",
        "Lcom/instabug/bug/k/b/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/bug/k/b/b;


# direct methods
.method constructor <init>(Lcom/instabug/bug/k/b/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/k/b/a$a;->a:Lcom/instabug/bug/k/b/b;

    invoke-direct {p0}, Lio/reactivex/observers/DisposableObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/instabug/bug/k/b/b;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "view hierarchy image saved successfully, uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/instabug/bug/k/b/b;->e()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ActivityViewInspector"

    invoke-static {v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity view inspection done successfully, time in MS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityViewInspector"

    invoke-static {v1, v0}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ActivityViewInspector"

    const-string v1, "bug ! null,converting>json started"

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/k/b/a$a;->a:Lcom/instabug/bug/k/b/b;

    invoke-static {v1}, Lcom/instabug/bug/k/b/a;->a(Lcom/instabug/bug/k/b/b;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/bug/model/a;->f(Ljava/lang/String;)Lcom/instabug/bug/model/a;

    const-string v0, "ActivityViewInspector"

    const-string v1, "bug ! null,converting>json ended"

    .line 5
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const-string v0, "ActivityViewInspector"

    const-string v1, "bug ! null,set inspection state"

    .line 8
    invoke-static {v0, v1}, Lcom/instabug/library/util/InstabugSDKLogger;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object v0

    sget-object v1, Lcom/instabug/bug/model/a$c;->DONE:Lcom/instabug/bug/model/a$c;

    invoke-virtual {v0, v1}, Lcom/instabug/bug/model/a;->a(Lcom/instabug/bug/model/a$c;)Lcom/instabug/bug/model/a;

    .line 11
    invoke-static {}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;->getInstance()Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;

    move-result-object v0

    sget-object v1, Lcom/instabug/bug/k/b/c$b;->COMPLETED:Lcom/instabug/bug/k/b/c$b;

    invoke-virtual {v0, v1}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "activity view inspection got error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", time in MS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityViewInspector"

    invoke-static {v1, v0, p1}, Lcom/instabug/library/util/InstabugSDKLogger;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-static {}, Lcom/instabug/bug/c;->h()Lcom/instabug/bug/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/instabug/bug/c;->a()Lcom/instabug/bug/model/a;

    move-result-object p1

    sget-object v0, Lcom/instabug/bug/model/a$c;->FAILED:Lcom/instabug/bug/model/a$c;

    invoke-virtual {p1, v0}, Lcom/instabug/bug/model/a;->a(Lcom/instabug/bug/model/a$c;)Lcom/instabug/bug/model/a;

    .line 5
    :cond_0
    invoke-static {}, Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;->getInstance()Lcom/instabug/bug/screenshot/viewhierarchy/utilities/ViewHierarchyInspectorEventBus;

    move-result-object p1

    sget-object v0, Lcom/instabug/bug/k/b/c$b;->FAILED:Lcom/instabug/bug/k/b/c$b;

    invoke-virtual {p1, v0}, Lcom/instabug/library/core/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/instabug/bug/k/b/b;

    invoke-virtual {p0, p1}, Lcom/instabug/bug/k/b/a$a;->a(Lcom/instabug/bug/k/b/b;)V

    return-void
.end method
