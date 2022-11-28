.class public final synthetic Lcom/google/android/libraries/places/internal/l;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/volley/Response$Listener;


# instance fields
.field private final a:Lcom/google/android/libraries/places/internal/gg;

.field private final b:Ljava/lang/Class;

.field private final c:Lcom/google/android/gms/tasks/TaskCompletionSource;


# direct methods
.method public constructor <init>(Lcom/google/android/libraries/places/internal/gg;Ljava/lang/Class;Lcom/google/android/gms/tasks/TaskCompletionSource;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/libraries/places/internal/l;->a:Lcom/google/android/libraries/places/internal/gg;

    iput-object p2, p0, Lcom/google/android/libraries/places/internal/l;->b:Ljava/lang/Class;

    iput-object p3, p0, Lcom/google/android/libraries/places/internal/l;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    return-void
.end method


# virtual methods
.method public final onResponse(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/libraries/places/internal/l;->a:Lcom/google/android/libraries/places/internal/gg;

    iget-object v1, p0, Lcom/google/android/libraries/places/internal/l;->b:Ljava/lang/Class;

    iget-object v2, p0, Lcom/google/android/libraries/places/internal/l;->c:Lcom/google/android/gms/tasks/TaskCompletionSource;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2, p1}, Lcom/google/android/libraries/places/internal/gg;->a(Ljava/lang/Class;Lcom/google/android/gms/tasks/TaskCompletionSource;Lorg/json/JSONObject;)V

    return-void
.end method
