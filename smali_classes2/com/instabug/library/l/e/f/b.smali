.class public Lcom/instabug/library/l/e/f/b;
.super Ljava/lang/Object;
.source "ApplicationServiceLocator.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final a:Lcom/instabug/library/l/e/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/instabug/library/l/e/f/a;

    invoke-direct {v0}, Lcom/instabug/library/l/e/f/a;-><init>()V

    .line 2
    new-instance v1, Lcom/instabug/library/l/e/e;

    invoke-direct {v1}, Lcom/instabug/library/l/e/e;-><init>()V

    .line 3
    invoke-static {v0, v1}, Lcom/instabug/library/l/e/b;->a(Lcom/instabug/library/l/e/a;Lcom/instabug/library/l/e/d;)Lcom/instabug/library/l/e/b;

    move-result-object v0

    sput-object v0, Lcom/instabug/library/l/e/f/b;->a:Lcom/instabug/library/l/e/b;

    return-void
.end method

.method public static a()Lcom/instabug/library/l/e/b;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY_GROUP:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/instabug/library/l/e/f/b;->a:Lcom/instabug/library/l/e/b;

    return-object v0
.end method
