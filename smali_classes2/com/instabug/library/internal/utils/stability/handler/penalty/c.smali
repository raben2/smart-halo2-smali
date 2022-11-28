.class public Lcom/instabug/library/internal/utils/stability/handler/penalty/c;
.super Ljava/lang/Object;
.source "SwallowPenaltyHandler.java"

# interfaces
.implements Lcom/instabug/library/internal/utils/stability/handler/penalty/PenaltyHandler;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPenaltyType()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handle(Ljava/lang/Exception;)V
    .locals 0
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method
