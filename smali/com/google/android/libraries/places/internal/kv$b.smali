.class public abstract Lcom/google/android/libraries/places/internal/kv$b;
.super Lcom/google/android/libraries/places/internal/kv;
.source "PG"

# interfaces
.implements Lcom/google/android/libraries/places/internal/mc;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/libraries/places/internal/kv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/google/android/libraries/places/internal/kv$b<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/android/libraries/places/internal/kv<",
        "TMessageType;TBuilderType;>;",
        "Lcom/google/android/libraries/places/internal/mc;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/libraries/places/internal/kp;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/libraries/places/internal/kp<",
            "Lcom/google/android/libraries/places/internal/kv$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/android/libraries/places/internal/kv;-><init>()V

    .line 3
    sget-object v0, Lcom/google/android/libraries/places/internal/kp;->d:Lcom/google/android/libraries/places/internal/kp;

    .line 4
    iput-object v0, p0, Lcom/google/android/libraries/places/internal/kv$b;->a:Lcom/google/android/libraries/places/internal/kp;

    return-void
.end method
