.class Lcom/instabug/chat/ui/f/f$a$a$a;
.super Ljava/lang/Object;
.source "ImageAttachmentViewerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/chat/ui/f/f$a$a;->onBitmapReady(Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/instabug/chat/ui/f/f$a$a;


# direct methods
.method constructor <init>(Lcom/instabug/chat/ui/f/f$a$a;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/chat/ui/f/f$a$a$a;->b:Lcom/instabug/chat/ui/f/f$a$a;

    iput-object p2, p0, Lcom/instabug/chat/ui/f/f$a$a$a;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/chat/ui/f/f$a$a$a;->b:Lcom/instabug/chat/ui/f/f$a$a;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/f$a$a;->a:Lcom/instabug/chat/ui/f/f$a;

    iget-object v0, v0, Lcom/instabug/chat/ui/f/f$a;->a:Lcom/instabug/chat/ui/f/f;

    iget-object v1, p0, Lcom/instabug/chat/ui/f/f$a$a$a;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/instabug/chat/ui/f/f;->a(Lcom/instabug/chat/ui/f/f;Landroid/graphics/Bitmap;)V

    return-void
.end method
