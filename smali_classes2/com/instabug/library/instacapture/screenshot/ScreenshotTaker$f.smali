.class final Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;
.super Ljava/lang/Object;
.source "ScreenshotTaker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker;->drawGLSurfaceView(Landroid/opengl/GLSurfaceView;[ILandroid/graphics/Canvas;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Ljava/nio/IntBuffer;

.field final synthetic d:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method constructor <init>(IILjava/nio/IntBuffer;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;->a:I

    iput p2, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;->b:I

    iput-object p3, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;->c:Ljava/nio/IntBuffer;

    iput-object p4, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    invoke-static {}, Ljavax/microedition/khronos/egl/EGLContext;->getEGL()Ljavax/microedition/khronos/egl/EGL;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/egl/EGL10;

    .line 2
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglWaitGL()Z

    .line 3
    invoke-interface {v0}, Ljavax/microedition/khronos/egl/EGL10;->eglGetCurrentContext()Ljavax/microedition/khronos/egl/EGLContext;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/khronos/egl/EGLContext;->getGL()Ljavax/microedition/khronos/opengles/GL;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljavax/microedition/khronos/opengles/GL10;

    .line 5
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glFinish()V

    const-wide/16 v2, 0xc8

    .line 8
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 13
    :goto_0
    iget v4, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;->a:I

    iget v0, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;->b:I

    add-int/lit8 v5, v0, 0x0

    iget-object v8, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;->c:Ljava/nio/IntBuffer;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v6, 0x1908

    const/16 v7, 0x1401

    invoke-interface/range {v1 .. v8}, Ljavax/microedition/khronos/opengles/GL10;->glReadPixels(IIIIIILjava/nio/Buffer;)V

    .line 14
    iget-object v0, p0, Lcom/instabug/library/instacapture/screenshot/ScreenshotTaker$f;->d:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
