.class Lcom/instabug/library/c$a$a;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c$a;->a(Lcom/instabug/library/model/session/SessionState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/c$a;


# direct methods
.method constructor <init>(Lcom/instabug/library/c$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/library/c$a$a;->a:Lcom/instabug/library/c$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/instabug/library/c$a$a;->a:Lcom/instabug/library/c$a;

    iget-object v0, v0, Lcom/instabug/library/c$a;->a:Lcom/instabug/library/c;

    invoke-static {v0}, Lcom/instabug/library/c;->o(Lcom/instabug/library/c;)V

    return-void
.end method
