.class Lcom/instabug/bug/view/a$b;
.super Ljava/lang/Object;
.source "AttachmentsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/bug/view/a;->c(Lcom/instabug/library/model/Attachment;)Landroid/view/View$OnClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/library/model/Attachment;

.field final synthetic b:Lcom/instabug/bug/view/a;


# direct methods
.method constructor <init>(Lcom/instabug/bug/view/a;Lcom/instabug/library/model/Attachment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/bug/view/a$b;->b:Lcom/instabug/bug/view/a;

    iput-object p2, p0, Lcom/instabug/bug/view/a$b;->a:Lcom/instabug/library/model/Attachment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/bug/view/a$b;->b:Lcom/instabug/bug/view/a;

    invoke-static {v0}, Lcom/instabug/bug/view/a;->a(Lcom/instabug/bug/view/a;)Lcom/instabug/bug/view/a$d;

    move-result-object v0

    iget-object v1, p0, Lcom/instabug/bug/view/a$b;->a:Lcom/instabug/library/model/Attachment;

    invoke-interface {v0, p1, v1}, Lcom/instabug/bug/view/a$d;->a(Landroid/view/View;Lcom/instabug/library/model/Attachment;)V

    return-void
.end method
