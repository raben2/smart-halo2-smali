.class final Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;
.super Ljava/lang/Object;
.source "DebugAnalyticsController.kt"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->observeNonFatalCrashes()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Exception;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "crash",
        "Ljava/lang/Exception;",
        "kotlin.jvm.PlatformType",
        "accept"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# static fields
.field public static final INSTANCE:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;

    invoke-direct {v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;-><init>()V

    sput-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;->INSTANCE:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Exception;)V
    .locals 3

    .line 111
    invoke-static {}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->getInstance()Lcom/google/firebase/crashlytics/FirebaseCrashlytics;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lcom/google/firebase/crashlytics/FirebaseCrashlytics;->recordException(Ljava/lang/Throwable;)V

    .line 112
    sget-object v0, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController;->Companion:Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;

    invoke-virtual {v0}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sending non fatal crash to Crashlytics : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 37
    check-cast p1, Ljava/lang/Exception;

    invoke-virtual {p0, p1}, Lbike/smarthalo/app/controllers/analyticsController/DebugAnalyticsController$observeNonFatalCrashes$1$1;->accept(Ljava/lang/Exception;)V

    return-void
.end method
