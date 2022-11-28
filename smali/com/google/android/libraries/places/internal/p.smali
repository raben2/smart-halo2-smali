.class public final synthetic Lcom/google/android/libraries/places/internal/p;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/tasks/OnTokenCanceledListener;


# instance fields
.field private final a:Lcom/bumptech/glide/request/FutureTarget;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/request/FutureTarget;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/p;->a:Lcom/bumptech/glide/request/FutureTarget;

    return-void
.end method


# virtual methods
.method public final onCanceled()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/p;->a:Lcom/bumptech/glide/request/FutureTarget;

    invoke-static {v0}, Lcom/google/android/libraries/places/internal/dq;->a(Lcom/bumptech/glide/request/FutureTarget;)V

    return-void
.end method
