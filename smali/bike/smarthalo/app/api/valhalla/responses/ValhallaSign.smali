.class public Lbike/smarthalo/app/api/valhalla/responses/ValhallaSign;
.super Ljava/lang/Object;
.source "ValhallaSign.java"


# instance fields
.field private exitTowardsElements:Ljava/util/ArrayList;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "exit_toward_elements"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lbike/smarthalo/app/api/valhalla/responses/ValhallaExitTowardsElements;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
