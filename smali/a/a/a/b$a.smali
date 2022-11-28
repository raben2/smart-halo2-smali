.class La/a/a/b$a;
.super Ljava/lang/Object;
.source "InstabugAnrDetectorThread.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:La/a/a/b;


# direct methods
.method constructor <init>(La/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, La/a/a/b$a;->a:La/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, La/a/a/b$a;->a:La/a/a/b;

    const/4 v1, 0x1

    invoke-static {v0, v1}, La/a/a/b;->a(La/a/a/b;Z)Z

    .line 2
    iget-object v0, p0, La/a/a/b$a;->a:La/a/a/b;

    const-wide/16 v1, 0x0

    invoke-static {v0, v1, v2}, La/a/a/b;->a(La/a/a/b;J)J

    .line 3
    iget-object v0, p0, La/a/a/b$a;->a:La/a/a/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, La/a/a/b;->b(La/a/a/b;Z)Z

    return-void
.end method
