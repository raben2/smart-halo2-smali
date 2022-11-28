.class Lcom/instabug/bug/i/c$a;
.super Ljava/lang/Object;
.source "BugReportingPromptItem.java"

# interfaces
.implements Lcom/instabug/library/core/plugin/PluginPromptOption$OnInvocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/i/c;->a(Landroid/content/Context;)Lcom/instabug/library/core/plugin/PluginPromptOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/instabug/bug/i/c;


# direct methods
.method constructor <init>(Lcom/instabug/bug/i/c;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/i/c$a;->b:Lcom/instabug/bug/i/c;

    iput-object p2, p0, Lcom/instabug/bug/i/c$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs onInvoke(Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 2
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/i/c$a;->b:Lcom/instabug/bug/i/c;

    iget-object v1, p0, Lcom/instabug/bug/i/c$a;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, p1, p2}, Lcom/instabug/bug/i/c;->a(Landroid/content/Context;Landroid/net/Uri;[Ljava/lang/String;)V

    return-void
.end method
