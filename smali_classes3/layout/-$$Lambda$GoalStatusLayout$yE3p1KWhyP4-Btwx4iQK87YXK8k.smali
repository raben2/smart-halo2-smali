.class public final synthetic Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Llayout/GoalStatusLayout;

.field private final synthetic f$1:I

.field private final synthetic f$2:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Llayout/GoalStatusLayout;ILandroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;->f$0:Llayout/GoalStatusLayout;

    iput p2, p0, Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;->f$1:I

    iput-object p3, p0, Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;->f$2:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;->f$0:Llayout/GoalStatusLayout;

    iget v1, p0, Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;->f$1:I

    iget-object v2, p0, Llayout/-$$Lambda$GoalStatusLayout$yE3p1KWhyP4-Btwx4iQK87YXK8k;->f$2:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Llayout/GoalStatusLayout;->lambda$updateProgress$1(Llayout/GoalStatusLayout;ILandroid/content/Context;)V

    return-void
.end method
