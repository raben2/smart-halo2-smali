.class public final synthetic Llayout/-$$Lambda$MapViewFragment$VZoRqJs3NEj-wnyUkhv-yGsMXy0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Llayout/MapViewFragment$AnimationListener;


# instance fields
.field private final synthetic f$0:Llayout/MapViewFragment;

.field private final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Llayout/MapViewFragment;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$MapViewFragment$VZoRqJs3NEj-wnyUkhv-yGsMXy0;->f$0:Llayout/MapViewFragment;

    iput-boolean p2, p0, Llayout/-$$Lambda$MapViewFragment$VZoRqJs3NEj-wnyUkhv-yGsMXy0;->f$1:Z

    return-void
.end method


# virtual methods
.method public final onAnimationCompleted()V
    .locals 2

    iget-object v0, p0, Llayout/-$$Lambda$MapViewFragment$VZoRqJs3NEj-wnyUkhv-yGsMXy0;->f$0:Llayout/MapViewFragment;

    iget-boolean v1, p0, Llayout/-$$Lambda$MapViewFragment$VZoRqJs3NEj-wnyUkhv-yGsMXy0;->f$1:Z

    invoke-static {v0, v1}, Llayout/MapViewFragment;->lambda$onStopped$10(Llayout/MapViewFragment;Z)V

    return-void
.end method
