.class Lcom/instabug/library/c$m;
.super Ljava/lang/Object;
.source "InstabugDelegate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/library/c;->I()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/instabug/library/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/instabug/library/logging/b;->c()V

    .line 4
    invoke-static {}, Lcom/instabug/library/logging/InstabugLog;->trimLogs()V

    return-void
.end method
