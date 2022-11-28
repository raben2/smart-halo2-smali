.class Lcom/instabug/survey/ui/i/b$b;
.super Ljava/lang/Object;
.source "SurveyFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/instabug/survey/ui/i/b;->c(Lcom/instabug/survey/models/Survey;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/instabug/survey/models/Survey;

.field final synthetic b:Lcom/instabug/survey/ui/i/b;


# direct methods
.method constructor <init>(Lcom/instabug/survey/ui/i/b;Lcom/instabug/survey/models/Survey;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/instabug/survey/ui/i/b$b;->b:Lcom/instabug/survey/ui/i/b;

    iput-object p2, p0, Lcom/instabug/survey/ui/i/b$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$b;->b:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0, p1}, Lcom/instabug/survey/ui/i/b;->a(Lcom/instabug/survey/ui/i/b;I)I

    .line 3
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$b;->b:Lcom/instabug/survey/ui/i/b;

    iget-object v1, p0, Lcom/instabug/survey/ui/i/b$b;->a:Lcom/instabug/survey/models/Survey;

    invoke-virtual {v0, p1, v1}, Lcom/instabug/survey/ui/i/b;->a(ILcom/instabug/survey/models/Survey;)V

    .line 5
    iget-object v0, p0, Lcom/instabug/survey/ui/i/b$b;->b:Lcom/instabug/survey/ui/i/b;

    invoke-static {v0, p1}, Lcom/instabug/survey/ui/i/b;->b(Lcom/instabug/survey/ui/i/b;I)V

    return-void
.end method
