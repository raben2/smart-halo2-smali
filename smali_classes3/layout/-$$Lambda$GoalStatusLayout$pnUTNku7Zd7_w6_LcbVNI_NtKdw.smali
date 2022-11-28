.class public final synthetic Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Llayout/GoalStatusLayout;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:D

.field private final synthetic f$3:Landroid/widget/TextView;

.field private final synthetic f$4:Lbike/smarthalo/app/models/SHGoal;


# direct methods
.method public synthetic constructor <init>(Llayout/GoalStatusLayout;Landroid/content/Context;DLandroid/widget/TextView;Lbike/smarthalo/app/models/SHGoal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$0:Llayout/GoalStatusLayout;

    iput-object p2, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$1:Landroid/content/Context;

    iput-wide p3, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$2:D

    iput-object p5, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$3:Landroid/widget/TextView;

    iput-object p6, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$4:Lbike/smarthalo/app/models/SHGoal;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$0:Llayout/GoalStatusLayout;

    iget-object v1, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$1:Landroid/content/Context;

    iget-wide v2, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$2:D

    iget-object v4, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$3:Landroid/widget/TextView;

    iget-object v5, p0, Llayout/-$$Lambda$GoalStatusLayout$pnUTNku7Zd7_w6_LcbVNI_NtKdw;->f$4:Lbike/smarthalo/app/models/SHGoal;

    invoke-static/range {v0 .. v5}, Llayout/GoalStatusLayout;->lambda$updateProgress$0(Llayout/GoalStatusLayout;Landroid/content/Context;DLandroid/widget/TextView;Lbike/smarthalo/app/models/SHGoal;)V

    return-void
.end method
