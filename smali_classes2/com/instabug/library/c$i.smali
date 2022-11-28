.class Lcom/instabug/library/c$i;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->b(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/instabug/library/c;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/instabug/library/c$i;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c$i;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/instabug/library/util/filters/Filters;->applyOn(Ljava/lang/Object;)Lcom/instabug/library/util/filters/Filters;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/instabug/library/util/filters/a;->e()Lcom/instabug/library/util/filters/Filter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/filters/Filters;->apply(Lcom/instabug/library/util/filters/Filter;)Lcom/instabug/library/util/filters/Filters;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/instabug/library/util/filters/a;->b()Lcom/instabug/library/util/filters/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instabug/library/util/filters/Filters;->thenDo(Lcom/instabug/library/util/filters/b/a;)V

    return-void
.end method
