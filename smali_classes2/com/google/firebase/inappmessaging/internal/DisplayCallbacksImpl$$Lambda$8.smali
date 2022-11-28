.class final synthetic Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl$$Lambda$8;
.super Ljava/lang/Object;
.source "DisplayCallbacksImpl.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# static fields
.field private static final instance:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl$$Lambda$8;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl$$Lambda$8;

    invoke-direct {v0}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl$$Lambda$8;-><init>()V

    sput-object v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl$$Lambda$8;->instance:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl$$Lambda$8;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lio/reactivex/functions/Consumer;
    .locals 1

    sget-object v0, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl$$Lambda$8;->instance:Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl$$Lambda$8;

    return-object v0
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-static {p1}, Lcom/google/firebase/inappmessaging/internal/DisplayCallbacksImpl;->lambda$logToImpressionStore$7(Ljava/lang/Throwable;)V

    return-void
.end method
